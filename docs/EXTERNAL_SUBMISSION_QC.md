# External Data Submission & Quality-Control Workflow

This project includes a mock reporting extract to demonstrate preparation of data for an external reporting entity.

## Workflow
1. Extract enrollment records from the analytical warehouse.
2. Aggregate headcount and credit load by term and degree level.
3. Calculate FTE from attempted credits.
4. Validate required fields, non-negative counts, and bounded rates.
5. Reconcile group totals back to warehouse counts.
6. Flag failed checks before a file is marked `READY`.
7. Preserve an auditable export and data dictionary.
