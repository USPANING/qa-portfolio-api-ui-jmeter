# Database Data Validation Notes

## Purpose
This document highlights how database queries are utilized during manual and API testing to verify data integrity, backend state changes, and business logic execution.

## QA Validation Scenarios

1. **Pre-test State Verification:**
   - Before executing UI/API booking scenarios, run `SELECT * FROM bookings WHERE status = 'Vacant';` to identify available test data.

2. **Data Consistency Checks:**
   - After creating a booking via API or UI, run an `INNER JOIN` query across `users`, `bookings`, and `payments` to verify that relational foreign keys are populated correctly without orphans.

3. **Backend Status Lifecycle:**
   - Verify that updating payment status via API properly reflects in the database (`UPDATE payments SET payment_status = 'paid' ...`) and doesn't leave lingering pending states.

4. **Data Cleanup (Teardown):**
   - Use targeted `DELETE` queries to clean up test records created during test execution, maintaining a clean environment state.

*Note: All SQL exercises in this section are performed on a dedicated educational relational database model and do not directly access the public Restful Booker production database.*
