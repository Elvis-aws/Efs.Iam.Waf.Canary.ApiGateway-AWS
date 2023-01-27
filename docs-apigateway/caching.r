

*******************
API Gateway caching
*******************
    - Reduces number of calls made to backend
    - TTL is 300 seconds default (min: 0 s, max: 3600 s/1 h)
    - 1 cache per stage
    - Encryption option
    - Size is 0.5 GB to 273 GB
    - Invalidate or flush cache
    - Clients can invalidate using header.Cache-Control:max-age=0(With proper IAM auth)
    - Use invalidate cache policy
