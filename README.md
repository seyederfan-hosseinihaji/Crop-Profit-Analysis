# Crop-Profit-Analysis

This project uses official data from FAO ([FAOSTAT](https://www.fao.org/faostat/en/#data/QCL)) to calculate and analyze wheat production, revenue, costs, and profits for multiple countries. It also displays the most and least profitable countries, highlights areas above and below the mean profit, and illustrates key metrics in a CSV table.

## Features

-   Converts yield from kg/ha to ton/ha
-   Calculates total production per country
-   Computes revenue, production cost, gross profit, tax, and net profit
-   Shows profit margin (%)
-   Identifies best and worst areas based on net profit
-   Highlights countries above or below the average profit
-   Converts monetary values to million dollars for better readability
-   Creates a summary `data.frame` for easy inspection

## Installation

Clone the repository:

`git clone https://github.com/seyederfan-hosseinihaji/Crop-Profit-Analysis.git`

`cd Crop-Profit-Analysis`

`source("Crop-Profit-Analysis.R")`

## Results:

**Data Frame:** Contains yield, profit, best and worst areas, and other summary metrics in a separate file named `Final_summary.csv`.

**Console Output:** Displays key results, including best and worst areas, profit statistics, net profit, mean of net profit, profit margin, tax etc.

## Project Structure

Crop-Profit-Analysis.R

FAOSTAT.xls

Final_summary.csv

README.md
