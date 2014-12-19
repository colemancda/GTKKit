#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation ShadowType

+ (GtkShadowType)none {
	return GTK_SHADOW_NONE;
}

+ (GtkShadowType)in {
	return GTK_SHADOW_IN;
}

+ (GtkShadowType)out {
	return GTK_SHADOW_OUT;
}

+ (GtkShadowType)etchedIn {
	return GTK_SHADOW_ETCHED_IN;
}

+ (GtkShadowType)etchedOut {
	return GTK_SHADOW_ETCHED_OUT;
}

@end
