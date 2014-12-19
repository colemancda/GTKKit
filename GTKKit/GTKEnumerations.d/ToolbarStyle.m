#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation ToolbarStyle

+ (GtkToolbarStyle)icons {
	return GTK_TOOLBAR_ICONS;
}

+ (GtkToolbarStyle)text {
	return GTK_TOOLBAR_TEXT;
}

+ (GtkToolbarStyle)both {
	return GTK_TOOLBAR_BOTH;
}

+ (GtkToolbarStyle)bothHorizontal {
	return GTK_TOOLBAR_BOTH_HORIZ;
}

@end
