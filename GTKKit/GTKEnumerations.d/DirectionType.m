#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@implementation DirectionType

+ (GtkDirectionType)tabForward {
	return GTK_DIR_TAB_FORWARD;
}

+ (GtkDirectionType)tabBackward {
	return GTK_DIR_TAB_BACKWARD;
}

+ (GtkDirectionType)up {
	return GTK_DIR_UP;
}

+ (GtkDirectionType)down {
	return GTK_DIR_DOWN;
}

+ (GtkDirectionType)left {
	return GTK_DIR_LEFT;
}

+ (GtkDirectionType)right {
	return GTK_DIR_RIGHT;
}

@end
