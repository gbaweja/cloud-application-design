from bottle import route, run, template, get, debug

debug(True)

# this will be the dictionary returned by the ajax call.
items = {1: 'first item', 2: 'second item'}

# a simple json test main page
@route('/')
def main():
    return template('main')

@route('/my_items.json')
def my_items():
    return (items)

run(host='0.0.0.0', port=8080)