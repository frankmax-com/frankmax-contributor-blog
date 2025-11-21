---
title: "Simple Deposit Interest Calculator for Banks (LangGraph + Python Example)"
date: 2025-11-12
draft: false
description: "A practical guide and ready-to-use LangGraph Python workflow that banks can use to calculate compound-deposit amounts for fixed-term deposits. Includes code, explanation, sample output and usage notes for bank staff."
meta:
  title: "Deposit Interest Calculator | Banking Example (LangGraph)"
  keywords: "Banking, Deposits, Interest Calculator, Compound Interest, LangGraph, Python, Financial Technology"
  author: "Banking Tech Insights"
categories: ["Banking", "Finance", "Developer Guide"]
banner: 
  image: "/images/articles/blogs/Banner.png"
  alt_text: "Deposit Interest Calculator - LangGraph Python workflow for banking applications"
tags: ["Banking", "Deposits", "Interest Calculator", "Compound Interest", "LangGraph", "Python"]
blog_no: "6"
author: 
  name: "Banking Tech Insights"
  bio: "Providing practical technical insights and ready-to-use solutions for modern banking systems and financial technology."
  image: "images/authors/banking-tech-insights.jpg"
  social:
    linkedin: ""
    twitter: ""
    github: ""
seo:
  canonical_url: ""
  meta_description: "Learn how to implement a simple, auditable compound interest calculator (LangGraph + Python) for bank deposit products, with ready-to-run code and sample outputs."
featured: false
reading_time: "8 min read"
---

## Introduction

Banks need simple, auditable tools to calculate how deposit balances grow over time. This article shows a compact **LangGraph + Python** workflow that calculates compound interest for fixed deposits — easy to integrate into backend tools, audit scripts, or internal calculators.

The example is intentionally minimal and transparent so it can be reviewed, verified, and extended to match specific bank product rules (compounding frequency, tax, penalty, rounding policy, decimal precision, interest conventions, etc.).

---

## Why this is useful for banks

- **Transparent**: every step is pure Python and human-readable, making audits straightforward.
- **Reproducible**: using a workflow graph means each node (input → calculation → output) is separable for testing and logging.
- **Extensible**: add frequency (monthly/quarterly), interest withholding, or promotional rates with small changes.
- **Integratable**: can be embedded into batch jobs, microservices, or a staff-facing tool.

---

## Compound interest logic (brief)

For annual compounding, the amount after `n` years is:

```
A = P * (1 + r)^n
```

where:
- `P` = principal (initial deposit)
- `r` = annual interest rate (decimal, e.g. 5% → `0.05`)
- `n` = number of years

For other compounding frequencies (m times per year):

```
A = P * (1 + r/m)^(m * n)
```

This example uses yearly compounding for clarity; comments show where to change it.

---

## Ready-to-use LangGraph + Python code

> Save this file as `deposit_calculator.py` or share with your dev team. The code snippet below is cleaned, documented, and ready to run inside an environment where `langgraph` is available (the example uses an IPython display snippet to render the workflow graph when run in Jupyter).

```python
# Deposit interest calculator using LangGraph StateGraph
# - Annual compounding by default
# - Simple, auditable nodes: input -> calculate -> output

from langgraph.graph import StateGraph, END
from typing import TypedDict, List, Dict

class CalcState(TypedDict):
    principal: float
    rate: float         # annual rate as decimal (e.g. 0.05 for 5%)
    years: List[int]
    results: Dict[int, float]

def input_node(state: CalcState):
    # Bank staff/operators: validate or log inputs here
    print("Input received:")
    print(f"Principal: {state['principal']}")
    print(f"Rate (decimal): {state['rate']}")
    print(f"Years: {state['years']}")
    return state

def calculate_interest(state: CalcState):
    """
    Calculates compound amounts for each year in state['years'].
    Uses annual compounding by default:
        amount = P * (1 + r) ** year
    To change compounding frequency to m times/year, modify formula to:
        amount = P * (1 + r/m) ** (m * year)
    """
    results: Dict[int, float] = {}
    P = float(state["principal"])
    r = float(state["rate"])

    # Optional: validate inputs (non-negative principal, reasonable rate)
    if P < 0:
        raise ValueError("Principal must be non-negative")
    if r < 0:
        raise ValueError("Rate must be non-negative")

    for year in state["years"]:
        # Annual compounding calculation
        amount = P * ((1 + r) ** year)
        # Round according to bank policy (here: 2 decimal places for currency)
        results[year] = round(amount, 2)

    state["results"] = results
    return state

def output_node(state: CalcState):
    print("\n--- Final Results ---")
    for year, amt in state["results"].items():
        print(f"Amount after Year {year}: ₹{amt}")
    return state

# Build the graph
graph = StateGraph(CalcState)
graph.add_node("input", input_node)
graph.add_node("calculate", calculate_interest)
graph.add_node("output", output_node)

graph.set_entry_point("input")
graph.add_edge("input", "calculate")
graph.add_edge("calculate", "output")
graph.add_edge("output", END)

# Compile workflow
workflow = graph.compile()

# (Optional) display graph visually in Jupyter / IPython
# from IPython.display import Image, display
# graph_png = workflow.get_graph().draw_mermaid_png()
# display(Image(graph_png))

# Example initial state (bank sample)
initial_state = {
    "principal": 200000,  # ₹2,00,000
    "rate": 0.05,         # 5% annual
    "years": [1, 2],
    "results": {}
}

# Invoke workflow (this runs input -> calculate -> output)
result = workflow.invoke(initial_state)
```

**Sample Output:**

```
Input received:
Principal: 200000
Rate (decimal): 0.05
Years: [1, 2]

--- Final Results ---
Amount after Year 1: ₹210000.0
Amount after Year 2: ₹220500.0
```

---

## How to adapt for bank product rules

### 1. Compounding frequency (monthly / quarterly)

Replace the annual formula with `amount = P * (1 + r/m) ** (m * year)` where `m` is number of compounding periods per year (12 for monthly, 4 for quarterly).

### 2. Interest payout vs. reinvestment

For payout (non-reinvested interest), compute simple interest per period instead: `interest = P * r * year`.

### 3. Different rates per year / tiered rates

If rate differs year-to-year, replace the loop to use `r_for_year = rate_schedule[year]` and apply `amount = amount * (1 + r_for_year)` iteratively.

### 4. Taxes, TDS, and deductions

Apply tax calculations after gross interest is computed per your bank's tax rules before finalizing payout amounts.

### 5. Rounding & currency policy

Use bank-approved rounding rules (some banks round interest to nearest paise, some apply floor/cap rules).

### 6. Auditing & logging

Add logging to each node (input validation node, calculation node) and persist intermediate values to an audit table or log store.

---

## Deployment and operational notes

- **Testing**: Create unit tests for edge cases (zero principal, zero rate, negative values, very large durations).
- **Security**: Validate and sanitize all inputs if exposed to external systems or staff UI.
- **Precision**: For long durations or multiple compounding periods use the `decimal` module to avoid floating-point rounding issues.
- **Regulatory compliance**: Ensure the logic matches product disclosures and regulatory interest calculation requirements in your jurisdiction before using for customer-facing quotes.

---

## Appendix — Quick modifications

### Monthly compounding example (modify `calculate_interest`):

```python
m = 12  # monthly
for year in state["years"]:
    amount = P * ((1 + r / m) ** (m * year))
    results[year] = round(amount, 2)
```

### Using decimal for higher precision:

```python
from decimal import Decimal, getcontext
getcontext().prec = 12

P = Decimal(str(state["principal"]))
r = Decimal(str(state["rate"]))
# then use Decimal arithmetic and convert to float/str for output
```

---

## Conclusion

This LangGraph + Python example provides a clear, auditable building block for bank deposit calculations. It's intentionally minimal so risk/compliance teams and developers can review it and extend it for real-world product needs (compounding rules, tax, rounding policies, interest payouts and reporting).

If you'd like, we can extend this further:
- Build a CLI or GUI interface for staff use,
- Add monthly/quarterly compounding and audit logging,
- Or port it to Core Java for backend integration.

Let's make banking computation more transparent, one graph at a time.

---

*This blog post is part of our ongoing series on Banking Technology. For more insights, check out our other [related posts](/blogs/).*