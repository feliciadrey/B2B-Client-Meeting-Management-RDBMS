## Overview
This database schema is designed to manage client profiles, brand information, and track meeting minutes for the Partnership team. It supports efficient management of pre- and post-meeting activities, including pending requests and potential collaborations.

## Database Schema

### Tables

- **clients**  
  Stores detailed information about clients including contact person (PIC), company profile, and main products or services.

- **brands**  
  Contains brands related to each client, supporting one-to-many relationship between clients and brands.

- **meetings**  
  Records meeting details such as date, purpose, agenda, summary, and meeting notes, linked to the associated client.

- **request_pending**  
  Tracks requests or action items pending after each meeting, including description, status, and related notes.

- **potential_collaborations**  
  Captures potential collaboration opportunities discussed during meetings with expected values and next discussion dates.

### Relationships

- Each client can have multiple brands.
- Each client can have multiple meetings.
- Each meeting can have multiple pending requests.
- Each meeting can have multiple potential collaborations.

## Purpose
This schema ensures a clear and organized structure that allows the Partnership team to:

- Access accurate client and brand profiles.
- Review detailed meeting outcomes.
- Monitor pending tasks and follow-ups.
- Identify and track potential collaborative opportunities.


---

For detailed table structures and sample data insertion, please refer to the included SQL scripts.
