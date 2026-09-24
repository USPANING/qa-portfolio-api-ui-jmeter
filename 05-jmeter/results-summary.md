# JMeter Load Testing Summary

## Overview
A basic performance sanity test was executed against the public Restful Booker endpoint (`GET /api/room`) to evaluate response times and reliability under minimal concurrent traffic.

## Test Configuration
- **Target Endpoint:** `https://automationintesting.online/api/room`
- **HTTP Method:** GET
- **Number of Threads (Users):** 5
- **Ramp-up Period:** 5 seconds
- **Loop Count:** 2
- **Total Requests Sent:** 10

## Execution Results

| Metric | Measured Value |
| :--- | :--- |
| **Total Samples** | 10 |
| **Average Response Time** | 202 ms |
| **Min Response Time** | 52 ms |
| **Max Response Time** | 1069 ms |
| **Error Rate** | 0.00% |
| **Throughput** | 2.5 req/sec |

## QA Analysis & Findings
1. **Error Rate:** 0.00% error rate indicates complete stability under low concurrent load.
2. **Response Times:** Average response time of 202 ms is within acceptable performance thresholds (< 500 ms) for web REST APIs.
3. **P99/Max Latency:** The maximum spike of 1069 ms occurred during initial connection establishment (cold start/network latency).

## Ethical Testing Notice
This test was strictly limited to 10 low-impact requests to respect public server resource boundaries and prevent Denial of Service (DoS) conditions.