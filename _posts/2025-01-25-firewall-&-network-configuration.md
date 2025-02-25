---
layout: default
title: "Firewall and Network Configuration"
---
---
## Introduction to the Firewall and Network Systems

As part of my development work, I was introduced to the firewall system and gained an understanding of various network components. This involved:

- **Traffic Control Mechanisms**: Learning how to regulate and manage network traffic to optimize performance and security.
- **Local Area Network (LAN) and Wide Area Network (WAN) Setups**: Understanding the architecture, configuration, and differences between LAN and WAN environments.
- **Web-based and IP-based Internet Connectivity**: Exploring how internet access is managed via web-based platforms and direct IP-based configurations.
- **Advanced Routing Techniques**: Examining different routing methodologies and their applications in ensuring efficient data transfer.
- **FIAS (Flexible Internet Access System) Configurations**: Gaining insights into FIAS, how it controls access, and its integration into the network.
- **Traffic Control at the ISP Level**: Investigating how ISPs regulate network bandwidth and prioritize traffic to maintain optimal performance.

## Fix: Issue

### API Configuration Issue

#### **Problem:**

The firewall administration interface had an issue where the admin was unable to assign a specific FIAS plan to guests. Instead, the system automatically applied the default plan to every guest, preventing any manual selection or customization.

#### **Investigation & Root Cause:**

Upon analyzing the API calls and database interactions, I identified that the issue was caused by a misconfigured API request that did not correctly pass the selected plan ID. The backend was always defaulting to the predefined plan due to improper parameter handling.

#### **Solution Implemented:**

- Modified the API to correctly handle user-selected plan parameters.
- Ensured that the correct FIAS plan is mapped and assigned dynamically.
- Conducted rigorous testing to verify that the issue was fully resolved and that custom plans could now be assigned seamlessly.
- Deployed the updated configuration and confirmed proper functionality in a live environment.

### Force DNS Issue

#### **Problem:**

The firewall system required force DNS rules to be executed in the background, but they were not functioning as expected, leading to potential security risks and improper traffic routing.

#### **Investigation & Root Cause:**

Upon debugging, I found that the execution script handling force DNS rules was either failing to initiate or stopping unexpectedly due to incomplete configurations.

#### **Solution Implemented:**

- Updated and refined the script to ensure persistent execution of force DNS rules in background.
- Implemented logging mechanisms to track and debug any potential failures.
- Updated the firewall-issues repository with the latest changes and documentation to maintain transparency and future reference.
- Conducted extensive testing to validate the stability and reliability of the solution in different network scenarios.
