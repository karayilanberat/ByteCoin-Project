# ByteCoin - Cryptocurrency Price Tracker

## Overview

ByteCoin is an app that allows users to track the current exchange rate of various cryptocurrencies. Users can select a currency from a picker and view its exchange rate in real-time. The app fetches live data from the CoinAPI to provide the most up-to-date exchange rates.

## ScreenShots

![Simulator Screenshot - iPhone 14 Pro - 2024-07-20 at 17 43 49](https://github.com/user-attachments/assets/29dc6feb-b90b-444b-9b3b-f8366a427a13)

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
