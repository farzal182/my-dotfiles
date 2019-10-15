static int topbar = 1;
static const char *fonts[] = {
	"Hack:size=8.5"
};
static const char *prompt      = NULL;
static const char *colors[SchemeLast][2] = {
	/* 					fg			bg		*/
	[SchemeNorm] = { "#eeeeee", "#383c4a" },
	[SchemeSel]  = { "#5db4cc", "#404552" },
	[SchemeOut]  = { "#eeeeee", "#383c4a" },
};
static unsigned int lines      = 0;
static unsigned int lineheight = 18;
static const char worddelimiters[] = " ";
