import sys

data_fn = sys.argv[1]

def getWord(b, k, n=4):
	return sum(list(map(lambda c: b[k+c]<<(c*8),range(n))))

_got_start = None
_got_end = None

for l in sys.stdin:
	l = l.split()
	adr = int("0x" + l[1], 0)
	name = l[-1]
	if name == "_got_start":
		_got_start = adr
	elif name == "_got_end":
		_got_end = adr

base_adr = 0x00105000

data = bytearray(open(data_fn, "rb").read())

print(".macro relocate")
for i in range(_got_start - base_adr, _got_end - base_adr, 0x4):
	val = getWord(data, i)
	if val >= base_adr and val < 0x08000000:
		print("	add_and_store 0xBABE0007, "+hex(val - base_adr)+", MENU_OBJECT_LOC + appCode - object + "+hex(i))
print(".endmacro")
