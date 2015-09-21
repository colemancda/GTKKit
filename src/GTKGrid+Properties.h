#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKContainer.h"

OF_ASSUME_NONNULL_BEGIN

@interface GTKGrid (Properties)
@property (assign) GtkOrientation orientation;
@property (assign) bool columnsHomogeneous;
@property (assign) bool rowsHomogeneous;
@property (assign) unsigned int rowSpacing;
@property (assign) unsigned int columnsSpacing;
@property (assign) int baselineRow;

- (GtkBaselinePosition)baselinePositionForRow: (int)row;
- (id)baselinePosition: (GtkBaselinePosition)position
		forRow: (int)row;
@end



OF_ASSUME_NONNULL_END