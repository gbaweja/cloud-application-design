from settings import r
import sys

if __name__ == '__main__':
    name = sys.argv[1]
    channel = sys.argv[2]

    print('Welcome to {channel}'.format(channel=channel))

    while True:
        message = input('Enter a message: ')

        if message.lower() == 'exit':
            break

        message = '{name} says: {message}'.format(name=name, message=message)

        r.publish(channel, message)
