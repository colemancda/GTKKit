#import <ObjFW/ObjFW.h>

#import <gtk/gtk.h>

#import "GTKContainer.h"

OF_ASSUME_NONNULL_BEGIN

/**
 * \category GTKContainer
 * \brief Action methods for GTKContainer
 */
@interface GTKContainer (Actions)

/**
 * Adds a GTKWidget to the container as a child widget.
 *
 * @param childWidget a GTKWidget to add to the container.
 */
- (void)addWidget: (GTKWidget*)childWidget;

- (void)removeWidget: (GTKWidget*)childWidget;

- (void)addAll: (OFArray*)childWidgets;

@end

OF_ASSUME_NONNULL_END
