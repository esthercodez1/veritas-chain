;; Title: VeritasChain Protocol
;;
;; Summary:
;; A revolutionary Bitcoin-native social credibility protocol that leverages 
;; economic staking mechanisms to create authentic, verifiable digital identities
;; and relationships, establishing trust through financial commitment on Bitcoin's
;; unparalleled security foundation via Stacks smart contracts.
;;
;; Description:
;; VeritasChain pioneers the concept of "Proof of Reputation" - a groundbreaking 
;; approach where social credibility is earned through economic skin-in-the-game.
;; By requiring STX token stakes for profile creation, content amplification, and
;; peer endorsements, the protocol eliminates bot networks, spam, and fake accounts
;; while incentivizing genuine community contribution. Built on Bitcoin's immutable
;; infrastructure through Stacks, VeritasChain creates portable, cross-platform
;; digital identities with quantifiable trust scores, enabling a new era of 
;; authentic social interaction backed by cryptographic proof and economic reality.
;;
;; Core Innovation:
;; - Economic accountability for every social action
;; - Bitcoin-secured immutable reputation ledger  
;; - Stake-weighted influence preventing manipulation
;; - Verifiable trust metrics with real financial backing
;; - Cross-application portable digital identity
;; - Community-governed credibility assessment

;; PROTOCOL CONSTANTS & CONFIGURATION

(define-constant CONTRACT_OWNER tx-sender)

;; System Error Codes
(define-constant ERR_UNAUTHORIZED (err u100))
(define-constant ERR_PROFILE_EXISTS (err u101))
(define-constant ERR_PROFILE_NOT_FOUND (err u102))
(define-constant ERR_INSUFFICIENT_STAKE (err u103))
(define-constant ERR_INVALID_AMOUNT (err u104))
(define-constant ERR_ALREADY_CONNECTED (err u105))
(define-constant ERR_NOT_CONNECTED (err u106))
(define-constant ERR_SELF_REFERENTIAL (err u107))
(define-constant ERR_DUPLICATE_ENDORSEMENT (err u108))
(define-constant ERR_CONTENT_NOT_FOUND (err u109))
(define-constant ERR_INVALID_USERNAME (err u110))

;; Economic Thresholds (microSTX)
(define-constant MIN_IDENTITY_STAKE u1000000)    ;; 1 STX - Identity verification
(define-constant MIN_CONTENT_BOOST u100000)      ;; 0.1 STX - Content amplification
(define-constant MIN_TRUST_ENDORSEMENT u500000)  ;; 0.5 STX - Peer validation

;; System Limits
(define-constant MAX_USERNAME_LENGTH u50)
(define-constant MAX_BIO_LENGTH u280)
(define-constant MAX_CONTENT_LENGTH u500)
(define-constant MAX_ENDORSEMENT_MESSAGE u140)

;; PROTOCOL STATE VARIABLES

(define-data-var next-profile-id uint u1)
(define-data-var next-content-id uint u1)
(define-data-var protocol-treasury uint u0)
(define-data-var governance-fee-rate uint u100) ;; 1% protocol fee

;; CORE DATA STRUCTURES

;; Verified Digital Identity Registry
(define-map verified-profiles
  { profile-id: uint }
  {
    owner: principal,
    username: (string-ascii 50),
    bio: (string-utf8 280),
    avatar-uri: (string-ascii 200),
    genesis-block: uint,
    total-stake: uint,
    credibility-score: uint,
    connection-count: uint,
    content-count: uint,
    endorsement-count: uint,
    verification-status: bool
  }
)

;; Identity Resolution System
(define-map username-registry (string-ascii 50) uint)
(define-map principal-registry principal uint)

;; Social Connection Graph
(define-map social-connections
  { connector: uint, connected-to: uint }
  { 
    established-at: uint,
    stake-weight: uint,
    connection-active: bool 
  }
)

;; Content Publication Ledger
(define-map published-content
  { content-id: uint }
  {
    creator: uint,
    content-data: (string-utf8 500),
    publication-block: uint,
    amplification-stake: uint,
    trust-endorsements: uint,
    content-active: bool
  }
)