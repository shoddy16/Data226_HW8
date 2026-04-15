SELECT
    u.userId,
    u.sessionId,
    u.channel,
    t.ts
FROM {{ ref('user_session_channel') }} u
JOIN {{ ref('session_timestamp') }} t
    ON u.sessionId = t.sessionId