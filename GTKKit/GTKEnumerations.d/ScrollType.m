#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation ScrollType

+ (GtkScrollType)none {
	return GTK_SCROLL_NONE;
}

+ (GtkScrollType)jump {
	return GTK_SCROLL_JUMP;
}

+ (GtkScrollType)stepBackward {
	return GTK_SCROLL_STEP_BACKWARD;
}

+ (GtkScrollType)stepForward {
	return GTK_SCROLL_STEP_FORWARD;
}

+ (GtkScrollType)pageBackward {
	return GTK_SCROLL_PAGE_BACKWARD;
}

+ (GtkScrollType)pageForward {
	return GTK_SCROLL_PAGE_FORWARD;
}

+ (GtkScrollType)stepUp {
	return GTK_SCROLL_STEP_UP;
}

+ (GtkScrollType)stepDown {
	return GTK_SCROLL_STEP_DOWN;
}

+ (GtkScrollType)pageUp {
	return GTK_SCROLL_PAGE_UP;
}

+ (GtkScrollType)pageDown {
	return GTK_SCROLL_PAGE_DOWN;
}

+ (GtkScrollType)stepLeft {
	return GTK_SCROLL_STEP_LEFT;
}

+ (GtkScrollType)stepRight {
	return GTK_SCROLL_STEP_RIGHT;
}

+ (GtkScrollType)pageLeft {
	return GTK_SCROLL_PAGE_LEFT;
};

+ (GtkScrollType)pageRight {
	return GTK_SCROLL_PAGE_RIGHT;
}

+ (GtkScrollType)start {
	return GTK_SCROLL_START;
}

+ (GtkScrollType)end {
	return GTK_SCROLL_END;
}

@end
