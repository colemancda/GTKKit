#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h> 

@implementation WrapMode

+ (PangoWrapMode)word {
	return PANGO_WRAP_WORD;
}

+ (PangoWrapMode)character {
	return PANGO_WRAP_CHAR;
}

+ (PangoWrapMode)wordOrCharacter {
	return PANGO_WRAP_WORD_CHAR;
}

@end
