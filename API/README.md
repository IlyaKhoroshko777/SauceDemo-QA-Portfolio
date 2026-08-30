# API Testing

API testing practice performed in Postman using the JSONPlaceholder REST API.

## Scope

The project contains **9 API requests** covering CRUD operations, query parameters, response validation, and negative scenarios.

## Requests

### GET

- `GET /posts` — retrieve all posts
- `GET /posts/1` — retrieve a post by ID
- `GET /comments?postId=1` — filter comments using a query parameter

### POST

- `POST /posts` — create a new post

Verified:
- `201 Created`
- response body
- generated `id`
- submitted JSON fields

### PUT

- `PUT /posts/1` — completely update an existing post

Verified:
- `200 OK`
- updated response data
- full resource replacement

### PATCH

- `PATCH /posts/1` — partially update an existing post

Verified:
- `200 OK`
- changed field
- unchanged existing fields

### DELETE

- `DELETE /posts/1` — delete a post

Verified:
- successful status code
- response body

## Negative Testing

- `GET /posts/999999` — request a non-existing resource
- `GET /invalid-endpoint` — request an invalid API endpoint

Both scenarios returned `404 Not Found`.

## Validation Performed

For the requests, I checked:

- HTTP method
- Endpoint
- Status code
- Response body
- JSON structure
- Key response fields
- Response headers
- `Content-Type`
- Query parameters
- Positive and negative API behavior

## Tools

- Postman
- JSONPlaceholder REST API
- JSON
- HTTP

## Postman Collection

[Download / View Postman Collection](JSONPlaceholder-API-Testing.postman_collection.json)

The collection can be imported directly into Postman.

## Screenshots

Request and response evidence is available in the [screenshots](screenshots/) folder.

The folder contains **18 screenshots** showing response bodies and headers for all 9 API requests.
