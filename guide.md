# Ride-Hailing Data Engineering Pipeline — Guide

A high-level roadmap for building an end-to-end data engineering pipeline that models the
ride-hailing domain: opening the app, requesting a ride, matching a captain, completing the
trip, and settling the transaction. This is a portfolio/learning project — everything runs
locally (Docker), no cloud account required.

## How to use this doc

This is the single source of truth for scope and status. As work progresses, update the
**Progress Tracker** table below (`Not Started` → `In Progress` → `Done`) and add notes on
decisions or blockers. The phase sections underneath stay high-level on purpose — detailed
steps get worked out when you're actually in that phase.

## Architecture

```
[ERD / Data Modeling] → [Postgres base tables] → [Synthetic data gen (AI-assisted)]
        → [dbt: staging → intermediate → marts (fct/dim)]
        → [Dagster orchestration wires it all together]
        → [Metabase BI layer]
```

**Stack:** PostgreSQL (base tables + warehouse) · dbt-core (transformations) · Dagster
(orchestration, native dbt asset integration) · Metabase (BI) · Docker Compose (local runtime).

## Progress Tracker

| # | Phase | Deliverable | Status | Notes |
|---|-------|-------------|--------|-------|
| 1 | Domain modeling | ERD (entities, relationships, cardinality) | Not Started | |
| 2 | Base schema | Postgres DDL, keys & constraints | Not Started | |
| 3 | Synthetic data generation | AI-assisted realistic seed data | Not Started | |
| 4 | Data loading | Scripts to seed Postgres from generated data | Not Started | |
| 5 | dbt project | staging → intermediate → marts (fct/dim) | Not Started | |
| 6 | Testing & data quality | dbt tests (uniqueness, not-null, relationships, accepted values) | Not Started | |
| 7 | Orchestration | Dagster asset graph wiring phases 3–6 | Not Started | |
| 8 | BI layer | Metabase dashboards on marts | Not Started | |
| 9 | Documentation | Data dictionary, lineage, README polish | Not Started | |

## Phases

### 1. Domain modeling
Design the ERD covering the full ride lifecycle: `riders`, `captains`, `vehicles`,
`app_events` (sessions/app opens), `ride_requests` → `rides` (with a `ride_status_history`
for state transitions: requested → assigned → arrived → in_progress → completed/cancelled),
`captain_assignment` (matching/offer events), `locations`/`zones`, `transactions`/`payments`,
and `ratings`.

- **Tools:** ERD tool of choice (dbdiagram.io, drawio, etc.)
- **Output:** ERD diagram + entity/relationship documentation

### 2. Base schema
Translate the ERD into Postgres DDL: tables, primary/foreign keys, constraints, and sensible
indexes for the base (OLTP-style) layer.

- **Tools:** PostgreSQL, SQL DDL scripts
- **Output:** Versioned schema migration files

### 3. Synthetic data generation
Generate realistic sample data for every base table — volumes, distributions, and edge cases
(cancellations, no-shows, surge periods, multi-city if in scope) — with AI assistance for
believable patterns.

- **Tools:** Python (Faker), LLM-assisted generation scripts
- **Output:** Seed datasets per table

### 4. Data loading
Load the generated seed data into the Postgres base tables.

- **Tools:** Python/SQL loading scripts
- **Output:** Populated base schema

### 5. dbt project
Build the transformation layer on top of the base tables: staging models (1:1 cleaned base
tables) → intermediate models (business logic, e.g. ride duration, matching latency) → marts
(`fct_rides`, `fct_transactions`, `dim_riders`, `dim_captains`, `dim_vehicles`, `dim_zones`,
`dim_date`).

- **Tools:** dbt-core, dbt-postgres
- **Output:** dbt project with staging/intermediate/marts layers

### 6. Testing & data quality
Add dbt tests across the models: uniqueness, not-null, relationships, and accepted-values
checks.

- **Tools:** dbt tests (generic + custom)
- **Output:** Passing test suite, documented data quality expectations

### 7. Orchestration
Wire data generation → loading → `dbt build` → `dbt test` into a single automated Dagster
asset graph.

- **Tools:** Dagster, dagster-dbt
- **Output:** Scheduled/triggerable end-to-end pipeline

### 8. BI layer
Build dashboards on top of the marts: funnel (app opens → requests → completed rides),
revenue, captain utilization, cancellation rates.

- **Tools:** Metabase
- **Output:** Published dashboards

### 9. Documentation
Write the data dictionary, model lineage, and polish the project README for portfolio
presentation.

- **Tools:** dbt docs, Markdown
- **Output:** Data dictionary + final README
