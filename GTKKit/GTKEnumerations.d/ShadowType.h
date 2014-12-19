#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface ShadowType : OFObject

+ (GtkShadowType)none;

+ (GtkShadowType)in;

+ (GtkShadowType)out;

+ (GtkShadowType)etchedIn;

+ (GtkShadowType)etchedOut;

@end
