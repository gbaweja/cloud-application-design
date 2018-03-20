import redis

r = redis.StrictRedis(
        host='redis-13684.c9.us-east-1-4.ec2.cloud.redislabs.com',
        port=13684,
        password='a-good-password'
    )
