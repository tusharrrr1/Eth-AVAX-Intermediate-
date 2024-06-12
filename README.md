# Eth-AVAX-Intermediate
# AssertionExample

AssertionExample is a Solidity smart contract that demonstrates the usage of require(), assert(), and revert() statements. These statements are used to validate inputs, check for unexpected conditions, and revert transactions with custom error messages.

## Overview

The AssertionExample contract provides the following features:

- A public variable `value` to store an unsigned integer value.
- The `setValue` function to set the value by validating the input and checking for unexpected conditions using require() and assert() statements.
- The `getValue` function to retrieve the current value.
- The `doRevert` function to demonstrate the usage of the revert() statement to revert the transaction with a custom error message.

## Getting Started

To use the AssertionExample contract, follow these steps:

1. Deploy the contract on the Ethereum blockchain using a tool like Remix, an online Solidity IDE.
2. Interact with the contract by calling the `setValue`, `getValue`, and `doRevert` functions with appropriate parameters.

## Code Walkthrough

The AssertionExample contract code is organized as follows:

- The contract is defined using the `contract` keyword, followed by the contract name (`AssertionExample`).
- A public variable `value` of type uint256 is declared to store the value.
- The `setValue` function takes a uint256 parameter `_newValue` and sets the value by validating the input using the require() statement and checking for unexpected conditions using the assert() statement.
- The `getValue` function is a view function that returns the current value.
- The `doRevert` function is a pure function that demonstrates the usage of the revert() statement to revert the transaction with a custom error message.

## Usage

Deploy the AssertionExample contract to a supported Ethereum network.

Once deployed, you can interact with the contract by calling the following functions:

- `setValue`: Sets the value by providing a new value.

  Parameters:
    - `_newValue`: The new value to set.

- `getValue`: Retrieves the current value.

- `doRevert`: Demonstrates the usage of the revert() statement to revert the transaction with a custom error message.

## License

This contract is licensed under the MIT License. SPDX-License-Identifier: MIT.
