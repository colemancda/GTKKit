#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation ScrollStepType

+ (GtkScrollStep)steps {
	return GTK_SCROLL_STEPS;
}

+ (GtkScrollStep)pages {
	return GTK_SCROLL_PAGES;
}

+ (GtkScrollStep)ends {
	return GTK_SCROLL_ENDS;
}

+ (GtkScrollStep)horizontalSteps {
	return GTK_SCROLL_HORIZONTAL_STEPS;
}

+ (GtkScrollStep)horizontalPages {
	return GTK_SCROLL_HORIZONTAL_PAGES;
}

+ (GtkScrollStep)horizontalEnds {
	return GTK_SCROLL_HORIZONTAL_ENDS;
}

@end
