#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>

@interface WrapMode : OFObject

+ (PangoWrapMode)word;

+ (PangoWrapMode)character;

+ (PangoWrapMode)wordOrCharacter;

@end
