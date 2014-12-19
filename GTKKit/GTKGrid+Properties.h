#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/Protocols/Orientable.h>

@interface GTKGrid (Properties) <Orientable> {

}

- (id)columnsHomogeneous:(bool)setting;

- (bool)columnsHomogeneous;

- (id)rowsHomogeneous:(bool)setting;

- (bool)rowsHomogeneous;

- (unsigned int)rowSpacing;

- (id)rowSpacing:(unsigned int)spacing;

- (unsigned int)columnSpacing;

- (id)columnSpacing:(unsigned int)spacing;

- (int)baselineRow;

- (id)baselineRow:(int)row;

- (GtkBaselinePosition)baselinePositionForRow:(int)row;

- (id)baselinePosition:(GtkBaselinePosition)position forRow:(int)row;

@end
