#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@implementation BaselinePosition

+ (GtkBaselinePosition)top {
	return GTK_BASELINE_POSITION_TOP;
}

+ (GtkBaselinePosition)center {
	return GTK_BASELINE_POSITION_CENTER;
}

+ (GtkBaselinePosition)bottom {
	return GTK_BASELINE_POSITION_BOTTOM;
}

@end
