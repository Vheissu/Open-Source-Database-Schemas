-- MySQL database schema

CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    display_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Repositories
CREATE TABLE repositories (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    owner_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    is_private BOOLEAN DEFAULT FALSE,
    forked_from BIGINT DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES users(id),
    FOREIGN KEY (forked_from) REFERENCES repositories(id) ON DELETE SET NULL
);

-- Commits
CREATE TABLE commits (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    repository_id BIGINT NOT NULL,
    author_id BIGINT NOT NULL,
    message TEXT NOT NULL,
    hash CHAR(40) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (repository_id) REFERENCES repositories(id),
    FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Issues
CREATE TABLE issues (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    repository_id BIGINT NOT NULL,
    author_id BIGINT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    status ENUM('open', 'closed') DEFAULT 'open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (repository_id) REFERENCES repositories(id),
    FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Pull requests
CREATE TABLE pull_requests (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    repository_id BIGINT NOT NULL,
    author_id BIGINT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    status ENUM('open', 'closed', 'merged') DEFAULT 'open',
    source_branch VARCHAR(255) NOT NULL,
    target_branch VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (repository_id) REFERENCES repositories(id),
    FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Labels
CREATE TABLE labels (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    repository_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL UNIQUE,
    color CHAR(6) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (repository_id) REFERENCES repositories(id)
);

-- Issue Labels
CREATE TABLE issue_labels (
    issue_id BIGINT NOT NULL,
    label_id BIGINT NOT NULL,
    PRIMARY KEY (issue_id, label_id),
    FOREIGN KEY (issue_id) REFERENCES issues(id),
    FOREIGN KEY (label_id) REFERENCES labels(id)
);

-- Stars
CREATE TABLE stars (
    user_id BIGINT NOT NULL,
    repository_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, repository_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (repository_id) REFERENCES repositories(id)
);

-- Collaborators
CREATE TABLE collaborators (
    user_id BIGINT NOT NULL,
    repository_id BIGINT NOT NULL,
    access_level ENUM('read', 'write', 'admin') DEFAULT 'write',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, repository_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (repository_id) REFERENCES repositories(id)
);

/*
-- Retrieve approved collaborators for a specific repository
SELECT
    users.id,
    users.username,
    users.email,
    users.display_name,
    collaborators.access_level
FROM
    collaborators
JOIN users ON collaborators.user_id = users.id
WHERE
    collaborators.repository_id = ?;
*/

/*
-- Retrieve repositories of a user (owned and collaborated):
SELECT r.* FROM repositories r WHERE r.owner_id = ? OR r.id IN (
    SELECT c.repository_id FROM collaborators c WHERE c.user_id = ?
);
*/

/*
-- Retrieve repositories by star count descending
SELECT
    r.id,
    r.name,
    u.username,
    COUNT(s.repository_id) AS star_count
FROM
    repositories r
JOIN users u ON r.owner_id = u.id
LEFT JOIN stars s ON r.id = s.repository_id
GROUP BY r.id
ORDER BY star_count DESC;
*/
