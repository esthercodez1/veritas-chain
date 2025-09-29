# VeritasChain Protocol 🔗⚡

[![Clarity Version](https://img.shields.io/badge/Clarity-3.0-blue)](https://clarity-lang.org/)
[![Stacks](https://img.shields.io/badge/Built%20on-Stacks-purple)](https://stacks.co/)
[![Bitcoin Security](https://img.shields.io/badge/Secured%20by-Bitcoin-orange)](https://bitcoin.org/)
[![License](https://img.shields.io/badge/License-ISC-green.svg)](LICENSE)

> A revolutionary Bitcoin-native social credibility protocol that leverages economic staking mechanisms to create authentic, verifiable digital identities and relationships, establishing trust through financial commitment on Bitcoin's unparalleled security foundation via Stacks smart contracts.

## 🌟 Core Innovation

VeritasChain pioneers the concept of **"Proof of Reputation"** - a groundbreaking approach where social credibility is earned through economic skin-in-the-game. By requiring STX token stakes for profile creation, content amplification, and peer endorsements, the protocol eliminates bot networks, spam, and fake accounts while incentivizing genuine community contribution.

### Key Features

- 🏦 **Economic accountability** for every social action
- 🔒 **Bitcoin-secured** immutable reputation ledger  
- ⚖️ **Stake-weighted influence** preventing manipulation
- ✅ **Verifiable trust metrics** with real financial backing
- 🌐 **Cross-application** portable digital identity
- 🗳️ **Community-governed** credibility assessment

## 🏗️ Architecture Overview

VeritasChain operates on three fundamental pillars:

### 1. Verified Identity Registry

- Economic-backed profile creation (minimum 1 STX stake)
- Unique username resolution system
- Immutable reputation scoring
- Cross-platform identity portability

### 2. Social Graph Construction

- Stake-weighted connections
- Trust propagation mechanics
- Network effect amplification
- Anti-manipulation safeguards

### 3. Content Credibility Engine

- Economic content amplification
- Peer-to-peer trust endorsements
- Stake-based influence weighting
- Community-driven content validation

## 💰 Economic Model

### Staking Requirements

| Action | Minimum Stake | Purpose |
|--------|--------------|---------|
| Identity Creation | 1 STX | Profile verification |
| Content Amplification | 0.1 STX | Boost visibility |
| Trust Endorsement | 0.5 STX | Peer validation |

### Revenue Distribution

- **99%** → Stake pools and rewards
- **1%** → Protocol treasury (adjustable via governance)

## 🚀 Quick Start

### Prerequisites

- [Clarinet](https://github.com/hirosystems/clarinet) v2.0+
- [Node.js](https://nodejs.org/) v16+
- STX tokens for testing

### Installation

```bash
# Clone the repository
git clone https://github.com/esthercodez1/veritas-chain.git
cd veritas-chain

# Install dependencies
npm install

# Run contract checks
clarinet check

# Execute test suite
npm test
```

### Development Setup

```bash
# Start Clarinet console for interactive testing
clarinet console

# Run tests in watch mode
npm run test:watch

# Generate coverage report
npm run test:report
```

## 📋 Smart Contract Functions

### Identity Management

#### `establish-verified-identity`

Creates a new verified profile with economic stake commitment.

```clarity
(establish-verified-identity 
  "username"           ;; string-ascii 50
  u"Bio description"   ;; string-utf8 280  
  "avatar-uri"         ;; string-ascii 200
)
```

#### `enhance-credibility-stake`

Increases credibility score through additional staking.

```clarity
(enhance-credibility-stake u1000000) ;; Additional stake in microSTX
```

### Social Networking

#### `establish-connection`

Creates verified connection between profiles.

```clarity
(establish-connection u123) ;; Target profile ID
```

#### `dissolve-connection`

Terminates existing social connection.

```clarity
(dissolve-connection u123) ;; Target profile ID
```

### Content Publishing

#### `publish-content`

Publishes content to the protocol with optional amplification.

```clarity
(publish-content u"Your content here") ;; string-utf8 500
```

#### `amplify-content`

Economically amplifies content visibility.

```clarity
(amplify-content u456 u100000) ;; Content ID, amplification amount
```

### Trust System

#### `endorse-content`

Stakes reputation on content quality.

```clarity
(endorse-content u456 u500000) ;; Content ID, endorsement stake
```

#### `endorse-peer`

Provides trust endorsement for another user.

```clarity
(endorse-peer 
  u789                           ;; Target profile ID
  u500000                        ;; Trust stake amount
  u"Trustworthy developer"       ;; Endorsement message
)
```

### Query Functions

#### `get-profile-by-id`

Retrieves complete profile information.

```clarity
(get-profile-by-id u123)
```

#### `resolve-username`

Resolves username to profile data.

```clarity
(resolve-username "alice")
```

#### `calculate-credibility-score`

Computes real-time credibility metrics.

```clarity
(calculate-credibility-score u123)
```

#### `get-protocol-stats`

Returns protocol-wide statistics.

```clarity
(get-protocol-stats)
```

## 🧪 Testing

The protocol includes comprehensive test coverage:

```bash
# Run all tests
npm test

# Run specific test file
npx vitest tests/veritas-chain.test.ts

# Run with coverage
npm run test:report
```

### Test Categories

- ✅ Identity creation and validation
- ✅ Social connection mechanics
- ✅ Content publishing and amplification
- ✅ Trust endorsement system
- ✅ Economic staking mechanisms
- ✅ Governance functions

## 🔧 Configuration

### Network Settings

The protocol supports multiple deployment environments:

- **Devnet**: `settings/Devnet.toml`
- **Testnet**: `settings/Testnet.toml`  
- **Mainnet**: `settings/Mainnet.toml`

### Economic Parameters

Key protocol parameters (adjustable via governance):

```clarity
;; Economic Thresholds (microSTX)
MIN_IDENTITY_STAKE: 1,000,000      ;; 1 STX
MIN_CONTENT_BOOST: 100,000         ;; 0.1 STX  
MIN_TRUST_ENDORSEMENT: 500,000     ;; 0.5 STX
```

## 🛡️ Security Features

### Economic Security

- Stake-based Sybil resistance
- Financial accountability for all actions
- Economic penalties for malicious behavior
- Progressive staking requirements

### Technical Security

- Bitcoin-grade immutability via Stacks
- Comprehensive input validation
- Safe arithmetic operations
- Access control mechanisms

### Anti-Manipulation

- Self-referential action prevention
- Duplicate endorsement protection
- Stake-weighted influence calculations
- Community governance oversight

## 🌍 Use Cases

### Social Media Platforms

- Verified user profiles with economic backing
- Spam and bot elimination
- Quality content amplification
- Trust-based content ranking

### Professional Networks

- Skill endorsements with financial commitment
- Reputation-based job matching
- Verifiable professional credentials
- Cross-platform identity verification

### Community Governance

- Stake-weighted voting systems
- Reputation-based proposal authority
- Economic accountability in decision-making
- Trust-based delegation mechanisms

### DeFi Integration

- Credit scoring based on social reputation
- Collateral-free lending to trusted users
- Reputation-backed insurance pools
- Social recovery mechanisms

## 🛣️ Roadmap

### Phase 1: Core Protocol ✅

- [x] Identity verification system
- [x] Social graph construction
- [x] Content publishing mechanics
- [x] Trust endorsement system

### Phase 2: Advanced Features 🚧

- [ ] Reputation delegation mechanisms
- [ ] Cross-chain identity bridges
- [ ] Advanced governance features
- [ ] Mobile SDK development

### Phase 3: Ecosystem Expansion 📋

- [ ] Third-party integrations
- [ ] Developer API platform
- [ ] Enterprise solutions
- [ ] Global scaling infrastructure

## 🤝 Contributing

We welcome contributions from the community! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Process

1. Fork the repository
2. Create a feature branch
3. Write comprehensive tests
4. Submit a pull request
5. Participate in code review

### Areas for Contribution

- Smart contract optimizations
- Additional test coverage
- Documentation improvements
- Integration examples
- Security audits

## 📖 Documentation

- [Smart Contract API Reference](docs/api.md)
- [Economic Model Deep Dive](docs/economics.md)
- [Integration Guide](docs/integration.md)
- [Security Best Practices](docs/security.md)

## 📜 License

This project is licensed under the ISC License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with [Stacks](https://stacks.co/) blockchain
- Secured by [Bitcoin](https://bitcoin.org/) network
- Powered by [Clarity](https://clarity-lang.org/) smart contracts
- Tested with [Clarinet](https://github.com/hirosystems/clarinet) framework
