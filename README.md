# Overtime Application

## Key requirement: company needs documentation that salaried emloyees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- x AuditLog

## Features:
- X Approval Workflow
- X (not integrated yet) SMS Sending -> link to approval or overtime input
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval 
- X Needs to be documented if employee did not log overtime

##UI:
- x Bootstrap -> formatting
- x Icons from Glyphicon
- x Update the styles for forms

## Refactor TODOS:
- x Refactor posts/_form for admin user with status