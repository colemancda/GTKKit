#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import "typedefs.h"

/** \brief Widget parent class.
 *
 * GTKWidget is the parent class for all the wrapper classes found in GTKKit.
 * It is not to be instantiated itself, but the methods it implements are
 * critical for all other UI* classes.
 */
@interface GTKWidget : OFObject

@property (nonnull, assign, getter=widget, setter=widget:) GtkWidget *widget;
@property (nullable, assign, unsafe_unretained) GTKCallback onDestroy;

/**
 * Create a new widget.
 *
 * @returns an initialized widget object.
 */
+ (id OF_NONNULL)new;

/**
 * Create a new widget object using a raw C GtkWidget.
 *
 * @param w the GtkWidget to wrap in a widget instance.
 * @returns an initialized widget object.
 */
+ (id OF_NONNULL)widgetFromGtkWidget:(GtkWidget * OF_NONNULL)w;

- (id OF_NONNULL)init;

- (id OF_NONNULL)createWidget;

@end
