# 🐷 Simple Piggy Bank - Smart Contract

A simple Piggy Bank smart contract built with Solidity as a learning project.

---

## 📋 Description

This smart contract works like a piggy bank.
Users can deposit ETH, check their balance, and the owner can break the piggy bank
to withdraw all funds.

---

## ✨ Features

- Deposit ETH (minimum 0.01 ETH)
- Check your own balance
- Check total ETH inside the contract
- Owner can break the piggy bank and withdraw all ETH

---

## 🛠️ Tech Stack

- Solidity ^0.8.20
- Remix IDE

---

## 📄 Contract Details

| Function | Description | Who Can Use |
|---|---|---|
| `deposit()` | Deposit ETH to the piggy bank | Anyone |
| `mySaldo()` | Check your own balance | Anyone |
| `getBalance()` | Check total ETH in contract | Anyone |
| `breakPiggyBank()` | Withdraw all ETH to owner | Owner only |

---

## 🚀 How To Run

1. Open [Remix IDE](https://remix.ethereum.org)
2. Create new file → paste `SimplePiggyBank.sol`
3. Go to **Solidity Compiler** tab → Click **Compile**
4. Go to **Deploy & Run** tab → Click **Deploy**
5. Test the functions!

---

## 🧪 How To Test

**Step 1 - Deposit ETH:**
- Select any account
- Set value to `0.01 ETH`
- Click `deposit`

**Step 2 - Check balance:**
- Click `mySaldo` → see your balance
- Click `getBalance` → see total ETH in contract

**Step 3 - Break the piggy bank:**
- Make sure you use the **owner account**
- Click `breakPiggyBank`
- All ETH will be sent to owner

---

## 📚 What I Learned

- How to use `mapping` to store user balance
- How to use `modifier` to restrict access
- How to use `payable` to receive ETH
- How to use `.call()` to send ETH
- How to loop an array in Solidity

---

## 👤 Author

**sjxrm**
- GitHub: [@sjxrm](https://github.com/sjxrm)

---

## 📝 License

This project is licensed under the MIT License.
