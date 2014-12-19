#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKLabel.h>

@interface GTKLabel (Properties)

- (NSString *)label;

- (id)label:(NSString *)label;

- (float)xAlign;

- (float)yAlign;

- (id)xAlign:(float)xAlign;

- (id)yAlign:(float)yAlign;

- (id)justify:(GtkJustification)jtype;

- (GtkJustification)justify;

- (PangoEllipsizeMode)ellipsizeMode;

- (id)ellipsizeMode:(PangoEllipsizeMode)mode;

- (int)desiredWidthInCharacters;

- (id)desiredWithdInCharacters:(int)width;

- (id)wrap:(bool)wrap;

- (bool)wrap;

- (id)lineWrapMode:(PangoWrapMode)mode;

- (PangoWrapMode)lineWrapMode;

- (bool)selectable;

- (id)selectable:(bool)setting;

- (bool)singleLineMode;

- (id)singleLineMode:(bool)setting;

- (double)angle;

- (id)angle:(double)angle;

@end
