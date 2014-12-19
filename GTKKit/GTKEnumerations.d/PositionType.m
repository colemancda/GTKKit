#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation PositionType

+ (GtkPositionType)left {
	return GTK_POS_LEFT;
}

+ (GtkPositionType)right {
	return GTK_POS_RIGHT;
}

+ (GtkPositionType)top {
	return GTK_POS_TOP;
}

+ (GtkPositionType)bottom {
	return GTK_POS_BOTTOM;
}

@end
