#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation StateFlag

+ (GtkStateFlags)normal {
	return GTK_STATE_FLAG_NORMAL;
}

+ (GtkStateFlags)active {
	return GTK_STATE_FLAG_NORMAL;
}

+ (GtkStateFlags)prelight {
	return GTK_STATE_FLAG_PRELIGHT;
}

+ (GtkStateFlags)selected {
	return GTK_STATE_FLAG_SELECTED;
}

+ (GtkStateFlags)insensitive {
	return GTK_STATE_FLAG_INSENSITIVE;
}

+ (GtkStateFlags)inconsistent {
	return GTK_STATE_FLAG_INCONSISTENT;
}

+ (GtkStateFlags)focused {
	return GTK_STATE_FLAG_FOCUSED;
}

+ (GtkStateFlags)backdrop {
	return GTK_STATE_FLAG_BACKDROP;
}

+ (GtkStateFlags)leftToRight {
	return GTK_STATE_FLAG_DIR_LTR;
}

+ (GtkStateFlags)rightToLeft {
	return GTK_STATE_FLAG_DIR_RTL;
}

+ (GtkStateFlags)link {
	return GTK_STATE_FLAG_LINK;
}

+ (GtkStateFlags)visited {
	return GTK_STATE_FLAG_VISITED;
}

//+ (GtkStateFlags)checked {
//	return GTK_STATE_FLAG_CHECKED;
//}

@end
