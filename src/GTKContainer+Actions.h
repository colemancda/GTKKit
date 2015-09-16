#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "GTKContainer.h"

/**
 * \category GTKContainer
 * \brief Action methods for GTKContainer
 */
@interface GTKContainer (Actions)

/**
 * Adds a GTKWidget to the container as a child widget.
 *
 * @param childWidget a GTKWidget to add to the container.
 * @returns self
 */
- (id)addWidget:(GTKWidget *)childWidget;

- (id)removeWidget:(GTKWidget *)childWidget;

- (id)addAll:(NSArray *)childWidgets;

@end
