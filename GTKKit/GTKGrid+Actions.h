#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKGrid.h>

@interface GTKGrid (Actions)

- (id)attachWidget:(GTKWidget *)childWidget left:(int)left top:(int)top width:(int)width height:(int)height;

- (id)attachWidget:(GTKWidget *)childWidget toWidget:(GTKWidget *)siblingWidget onSide:(GtkPositionType)side width:(int)width height:(int)height;

- (id)insertRowAtPosition:(int)position;

- (id)insertColumnAtPosition:(int)position;

- (id)removeRow:(int)position;

- (id)removeColumn:(int)position;

@end
