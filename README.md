# ByteCoin - Cryptocurrency Price Tracker

## Overview

ByteCoin is an app that allows users to track the current exchange rate of various cryptocurrencies. Users can select a currency from a picker and view its exchange rate in real-time. The app fetches live data from the CoinAPI to provide the most up-to-date exchange rates.

## ScreenShots

![2019-09-17_16-28-34-ca824df904f49d725c1dbc0353c7bd7e](https://github.com/user-attachments/assets/98bc9d21-d64f-4320-99ca-6c228c22f630)

## Features

- Real-time cryptocurrency exchange rates
- UIPickerView for currency selection
- URLSession for networking
- JSON Parsing with Decodable protocol
- Swift Protocols for better code organization
- Error Handling

## Usage

1. Build and run the app on an iOS simulator or a physical device.
2. Select a currency from the picker to fetch and display the current exchange rate.

## Project Structure

### Model

- `CoinModel.swift`
- `CoinData.swift`

### View

- `Main.storyboard`

### Controller

- `CoinViewController.swift`
- `CoinManager.swift`

## Installation

```bash
git clone https://github.com/yourusername/ByteCoin.git
cd ByteCoin
open ByteCoin.xcodeproj
