use reqwest::Client;
use serde::{Deserialize, Serialize};
use reqwest::Error;

#[derive(Serialize, Deserialize, Debug)]
struct Task {
    id: i32,
    name: String,
}

#[tokio::main]
async fn main() -> Result<(), Error> {
    // Create a new HTTP client
    let client = Client::new();

    // Perform the GET request and await the response
    let response = client.get("http://localhost:4000/api/tasks")
        .send()
        .await?;

    // Check if the response status is OK (200)
    if response.status().is_success() {
        // Parse the JSON response into a Vec<Task>
        let tasks: Vec<Task> = response.json().await?;

        // Print the tasks
        println!("Tasks:");
        for task in tasks {
            println!("{}: {}", task.id, task.name);
        }
    } else {
        // Handle the case where the server returns an error (non-200 status)
        eprintln!("Failed to fetch tasks. HTTP status: {}", response.status());
    }

    Ok(())
}
