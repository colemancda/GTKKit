#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKLabel.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKLabel (Properties)
@property (assign) OFString *label;
@property (assign) float xAlign;
@property (assign) float yAlign;
@property (assign) GtkJustification justify;
@property (assign) PangoEllipsizeMode ellipsizeMode;
@property (assign) int desiredWidthInCharacters;
@property (assign) bool wrap;
@property (assign) PangoWrapMode lineWrapMode;
@property (assign) bool selectable;
@property (assign) bool singleLineMode;
@property (assign) double angle;
@end

OF_ASSUME_NONNULL_END
