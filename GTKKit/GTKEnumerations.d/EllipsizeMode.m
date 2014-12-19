#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation EllipsizeMode

+ (PangoEllipsizeMode)none {
	return PANGO_ELLIPSIZE_NONE;
}

+ (PangoEllipsizeMode)start {
	return PANGO_ELLIPSIZE_START;
}

+ (PangoEllipsizeMode)middle {
	return PANGO_ELLIPSIZE_MIDDLE;
}

+ (PangoEllipsizeMode)end {
	return PANGO_ELLIPSIZE_END;
}

@end
