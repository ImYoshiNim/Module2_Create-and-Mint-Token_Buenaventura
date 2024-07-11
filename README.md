# Create and Mint Tokens

The Wal_Lee_T contract is an ERC20-compliant token implemented in Solidity, designed with additional functionality and ownership controls. It ensures that all token transfers, executed through the transfer function, must involve amounts that are multiples of 10. The contract provides methods for minting new tokens by the owner and burning tokens by any user, enhancing flexibility in token management. Ideal for decentralized applications requiring customized transfer rules and secure ownership management, Wal_Lee_T leverages OpenZeppelin's ERC20 implementation for robust and standardized token functionality.

## Functions

Burn:

The burn function allows a token holder to destroy (burn) a specific amount of their own tokens permanently. This operation reduces the total supply of the token. In the context of the ERC20 standard, burning tokens is often used to manage token supply dynamically, potentially reflecting actions like token redemption, deflationary mechanisms, or token destruction events. For security reasons, burning typically requires the caller to provide proof of ownership of the tokens being burned, which in Ethereum's case is handled automatically by requiring the transaction to be signed by the token holder's private key.

Mint:

The mint function is used to create (mint) new tokens and add them to the total token supply. Minting is typically a privileged operation restricted to specific addresses, such as the contract owner or a designated minter. In the ERC20 standard, minting new tokens is often employed for initial token distribution during token launches, for rewarding users based on certain conditions, or for expanding the token supply under controlled circumstances. It's important that minting functions are securely implemented to prevent unauthorized creation of tokens, which could affect token economics and user trust.

Transfer:

The transfer function allows a token holder to send a specified amount of tokens to another Ethereum address. This function is a core feature of ERC20 tokens, enabling peer-to-peer transfers and facilitating token circulation within the Ethereum ecosystem. Transfers are subject to conditions such as sufficient token balance, approval through allowances if applicable, and specific business logic defined by the token contract (e.g., restrictions on transfer amounts or conditions). Ensuring secure and efficient transfer functionality is crucial for the usability and reliability of ERC20 tokens in various decentralized applications (dApps), including exchanges, wallets, and decentralized finance (DeFi) protocols.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

The full program can accessed in the .sol file that is included in this repository. (file is named: Buenaventura_myToken.sol)

To compile the code, navigate to the "Solidity Compiler" tab in the left-hand side of the sidebar. Ensure the "Compiler" version is set to "0.8.18", and then click the "Compile Name_myToken.sol" button.

Once the contract has finished compiling, select the "Deploy & Run Transactions" tab located on the sidebar's left side. Click "Deploy" after selecting the "My Token - FinalProject.sol" contract from the dropdown menu.

## Authors

Metacrafter Student Adam
LinkedIn: www.linkedin.com/in/adam-buenaventura.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
