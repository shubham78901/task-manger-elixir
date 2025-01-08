+------------------+        +--------------------+        +----------------+
|   React Frontend | <----> |   Elixir Backend   | <----> |   Rust Service |
| Port: 3000       |        | Port: 4000         |        | Port: 5000     |
+------------------+        +--------------------+        +----------------+

Integration:
- React (UI): Communicates with Elixir via REST or WebSockets for API requests and real-time updates.
- Elixir (API & Logic): Handles business logic, database interactions, and WebSocket connections.
- Rust (High-Perf): Handles computationally heavy tasks or microservices, integrating with Elixir via HTTP APIs or NIFs.
