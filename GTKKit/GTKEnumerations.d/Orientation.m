#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation Orientation

+ (GtkOrientation)horizontal {
	return GTK_ORIENTATION_HORIZONTAL;
}

+ (GtkOrientation)vertical {
	return GTK_ORIENTATION_VERTICAL;
}

@end
