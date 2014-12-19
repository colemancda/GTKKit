#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation ReliefStyle

+ (GtkReliefStyle)normal {
	return GTK_RELIEF_NORMAL;
}

+ (GtkReliefStyle)none {
	return GTK_RELIEF_NONE;
}

@end
