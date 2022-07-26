local M = {}

M.lspkind = {
	Namespace = "",
  Text = " ",
	Method = " ",
	Function = " ",
	Constructor = " ",
	Field = "ﰠ ",
	Variable = " ",
	Class = "ﴯ ",
	Interface = " ",
	Module = " ",
	Property = "ﰠ ",
	Unit = "塞",
	Value = " ",
	Enum = " ",
	Keyword = " ",
	Snippet = " ",
	Color = " ",
	File = " ",
	Reference = " ",
	Folder = " ",
	EnumMember = " ",
	Constant = " ",
	Struct = "פּ ",
	Event = " ",
	Operator = " ",
	TypeParameter = " ",
	Table = "",
	Object = " ",
	Tag = "",
	Array = "[]",
	Boolean = " ",
	Number = " ",
	Null = "ﳠ",
	String = " ",
	Calendar = "",
	Watch = " ",
	Package = "",
}

M.devicons = {
	default_icon = {
		icon = "",
		name = "Default",
	},

	c = {
		icon = "",
		name = "c",
	},

	css = {
		icon = "",
		name = "css",
	},

	deb = {
		icon = "",
		name = "deb",
	},

	Dockerfile = {
		icon = "",
		name = "Dockerfile",
	},

	html = {
		icon = "",
		name = "html",
	},

	jpeg = {
		icon = "",
		name = "jpeg",
	},

	jpg = {
		icon = "",
		name = "jpg",
	},

	js = {
		icon = "",
		name = "js",
	},

	kt = {
		icon = "󱈙",
		name = "kt",
	},

	lock = {
		icon = "",
		name = "lock",
	},

	lua = {
		icon = "",
		name = "lua",
	},

	mp3 = {
		icon = "",
		name = "mp3",
	},

	mp4 = {
		icon = "",
		name = "mp4",
	},

	out = {
		icon = "",
		name = "out",
	},

	png = {
		icon = "",
		name = "png",
	},

	py = {
		icon = "",
		name = "py",
	},

	["robots.txt"] = {
		icon = "ﮧ",
		name = "robots",
	},

	toml = {
		icon = "",
		name = "toml",
	},

	ts = {
		icon = "ﯤ",
		name = "ts",
	},

	ttf = {
		icon = "",
		name = "TrueTypeFont",
	},

	rb = {
		icon = "",
		name = "rb",
	},

	rpm = {
		icon = "",
		name = "rpm",
	},

	vue = {
		icon = "﵂",
		name = "vue",
	},

	woff = {
		icon = "",
		name = "WebOpenFontFormat",
	},

	woff2 = {
		icon = "",
		name = "WebOpenFontFormat2",
	},

	xz = {
		icon = "",
		name = "xz",
	},

	zip = {
		icon = "",
		name = "zip",
	},
}

M.otherIcons = {
	abc = "  ",
	array = "  ",
	arrowReturn = "  ",
	bigCircle = "  ",
	bigUnfilledCircle = "  ",
	bomb = "  ",
	bookMark = "  ",
	boolean = " 蘒",
	box = "  ",
	buffer = " ﬘ ",
	bug = "  ",
	calculator = "  ",
	calendar = "  ",
	caretRight = "",
	check = "  ",
	checkSquare = "  ",
	exit = "  ",
	chevronRight = "",
	circle = "  ",
	class = "  ",
	close = "  ",
	code = "  ",
	cog = "  ",
	color = "  ",
	comment = "  ",
	constant = "  ",
	constructor = "  ",
	container = "  ",
	cubeTree = "  ",
	curlies = "  ",
	dashboard = "  ",
	database = " ﬘ ",
	emptyBox = "  ",
	enum = "  ",
	enumMember = "  ",
	error = "  ",
	errorOutline = "  ",
	errorSlash = " ﰸ ",
	event = "  ",
	f = "  ",
	field = "  ",
	file = "  ",
	fileBg = "  ",
	fileCopy = "  ",
	fileCutCorner = "  ",
	fileNoBg = "  ",
	fileNoLines = "  ",
	fileNoLinesBg = "  ",
	fileRecent = "  ",
	fire = "  ",
	folder = "  ",
	folderNoBg = "  ",
	folderOpen = "  ",
	folderOpen2 = " ﱮ ",
	folderOpenNoBg = "  ",
	forbidden = "  ",
	func = "  ",
	gear = "  ",
	gears = "  ",
	git = "  ",
	gitAdd = "  ",
	gitChange = " 柳",
	gitRemove = "  ",
	happyFace = " ﲃ ",
	hexCutOut = "  ",
	history = "  ",
	hook = " ﯠ ",
	info = "  ",
	infoOutline = "  ",
	interface = "  ",
	key = "  ",
	keyword = "  ",
	light = "  ",
	lightbulb = "  ",
	lightbulbOutline = "  ",
	list = "  ",
	lock = "  ",
	m = " m ",
	method = "  ",
	module = "  ",
	newFile = "  ",
	note = "  ",
	number = "  ",
	numbers = "  ",
	object = "  ",
	operator = "  ",
	package = "  ",
	paint = "  ",
	paragraph = "  ",
	pencil = "  ",
	pie = "  ",
	project = "  ",
	property = "  ",
	questionCircle = "  ",
	rectangleIntersect = " 練",
	reference = "  ",
	ribbon = "  ",
	ribbonNoBg = "  ",
	robot = " ﮧ ",
	ruler = " 塞",
	scissors = "  ",
	scope = "  ",
	search = "  ",
	settings = "  ",
	signIn = "  ",
	snippet = "  ",
	sort = "  ",
	spell = " 暈",
	squirrel = "  ",
	string = "  ",
	struct = "   ",
	t = "  ",
	table = "  ",
	tag = "  ",
	telescope = "  ",
	terminal = "  ",
	text = "  ",
	threeDots = "  ",
	threeDotsBoxed = "  ",
	timer = "  ",
	toggleSelected = " 蘒",
	trash = "  ",
	tree = "  ",
	treeDiagram = "  ",
	typeParameter = "  ",
	unit = "  ",
	up_hexagon = "  ",
	value = "  ",
	variable = "  ",
	vim = "  ",
	warningCircle = "  ",
	warningTriangle = "  ",
	warningTriangleNoBg = "  ",
	watch = "  ",
	wrench = "  ",
}

return M
