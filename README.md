# UEFA Champions League Data Analysis

A data analysis project exploring match statistics from the UEFA Champions League (2020–2023) using SQL and Python. This repository demonstrates how to extract insights from soccer data, including team performance, possession, and match outcomes.

---

## Table of Contents

- [Scenario and Problem Statement](#scenario-and-problem-statement)
- [Dataset Description](#dataset-description)
- [Actions and Approach](#actions-and-approach)
- [Screenshots and Examples](#screenshots-and-examples)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Results and Insights](#results-and-insights)
- [Future Work](#future-work)
- [Contact Information](#contact-information)

---

## Scenario and Problem Statement

The UEFA Champions League is the pinnacle of European club football, featuring top teams from across the continent. This project aims to answer key analytical questions about team performance, possession dominance, and match outcomes using real match data from the 2020–2023 seasons.

**Key Questions:**

1. Which teams scored the most goals at home in 2020–21?
2. Which team had the majority possession most often in 2021–22?
3. Which teams won the most duels but still lost their matches in 2022–23?

---

## Dataset Description

Three CSV files are used, each representing a season:

- `uefa_2020.csv`
- `uefa_2021.csv`
- `uefa_2022.csv`

**Schema Overview:**

| Column          | Description              | Type        |
| --------------- | ------------------------ | ----------- |
| STAGE           | Stage of the match       | VARCHAR(50) |
| DATE            | Match date               | DATE        |
| TEAM_NAME_HOME  | Home team name           | VARCHAR(50) |
| TEAM_NAME_AWAY  | Away team name           | VARCHAR(50) |
| TEAM_HOME_SCORE | Home team score          | NUMBER      |
| TEAM_AWAY_SCORE | Away team score          | NUMBER      |
| POSSESSION_HOME | Home team possession (%) | FLOAT       |
| POSSESSION_AWAY | Away team possession (%) | FLOAT       |
| DUELS_WON_HOME  | Duels won by home team   | NUMBER      |
| DUELS_WON_AWAY  | Duels won by away team   | NUMBER      |
| ...             | ...                      | ...         |

See the [notebook](notebooks/notebook.ipynb) for the full schema.

---

## Actions and Approach

- Loaded CSV data into Snowflake tables.
- Wrote SQL queries to answer analytical questions.
- Visualized results in Jupyter Notebook.
- Provided markdown explanations and insights.

---

## Screenshots and Examples

### Example: Top 3 Home Scoring Teams (2020–21)

![Top Home Scorers](images/Duel_football.jpg)

| TEAM_NAME_HOME    | TEAM_HOME_SCORE |
| ----------------- | --------------- |
| PSG               | 5               |
| Manchester United | 5               |
| Barcelona         | 5               |

### Example: Team with Most Majority Possession (2021–22)

| TEAM_NAME | GAME_COUNT |
| --------- | ---------- |
| Liverpool | 9          |

### Example: Teams Winning Duels but Losing Matches (2022–23)

| STAGE                   | TEAM_LOST |
| ----------------------- | --------- |
| Group stage: Matchday 1 | Chelsea   |
| Group stage: Matchday 1 | København |
| ...                     | ...       |

---

## Technologies Used

- **Python 3** (Jupyter Notebook)
- **SQL** (Snowflake)
- **Markdown** (documentation)

---

## Project Structure

**ucl-snowflake-analysis/**

- **data/**
  - uefa_2020.csv
  - uefa_2021.csv
  - uefa_2022.csv
- **images/**
  - Stadium.jpg
  - Duel_football.jpg
- **queries/**
  - TEAM_HOME_WITH_MOST_GOALS.sql
  - TEAM_WITH_MAJORITY_POSSESSION.sql
  - TEAM_WON_DUEL_LOST_GAME_STAGE_WISE.sql
- **notebooks/**
  - notebook.ipynb
- README.md

---

## Results and Insights

- **PSG, Manchester United, and Barcelona** were the top home scorers in 2020–21.
- **Liverpool** had the majority possession in the most matches during 2021–22.
- Several teams, including **Chelsea** and **København**, won more duels but still lost matches in 2022–23, highlighting the complexity of match outcomes.

---

## Future Work

- Expand analysis to player-level statistics.
- Incorporate advanced metrics (xG, pass accuracy).
- Build interactive dashboards.
- Analyze trends across multiple seasons.

---

## Acknowledgement

- Problem statements and/or datasets in this project were sourced from [DataCamp](https://www.datacamp.com/) real-world projects.

---

## Contact Information

For questions or collaboration:

- **Email:** reynaldoiii.castillo@gmail.com
- **LinkedIn:** Reynaldo III Castillo | [LinkedIn](https://www.linkedin.com/in/reynaldo-iii-castillo-975120303)
