#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation Justify

+ (GtkJustification)left {
	return GTK_JUSTIFY_LEFT;
}

+ (GtkJustification)right {
	return GTK_JUSTIFY_RIGHT;
}

+ (GtkJustification)center {
	return GTK_JUSTIFY_CENTER;
}

+ (GtkJustification)fill {
	return GTK_JUSTIFY_FILL;
}

@end
