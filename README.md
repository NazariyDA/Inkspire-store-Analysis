# Inkspire store Analysis 📊 📚
Conducting an analysis of the imaginary Inkspire store’s performance by creating a dashboard that presents data for marketing managers, enabling them to make informed decisions regarding the optimization of advertising campaigns, promotional strategies, and product assortment.

## The interactive dashboard displays information about the imaginary Inkspire store, allowing users to:
* To quickly review the store’s key metrics and conversions (both overall and across key segments)
* Independently explore conversions to identify how they vary depending on visitor groups and traffic sources.

## Tools that were used during the project

<table>
  <tr>
    <td><em>The data for this project was obtained from the public GA4 dataset in <strong>BigQuery</strong>.</em></td>
    <td><img src="google-bigquery-logo.png" alt="BigQuery Logo" width="200" height="130"/></td>
  </tr>
  <tr>
    <td><em>The required and processed data were visualized using <strong>Tableau</strong>.</em></td>
    <td><img src="Tableau-logo.png" alt="Tableau Logo" width="200" height="130"/></td>
  </tr>
</table>


## Conclusions Based on the Inkspire Dashboard Analysis:
* ### Seasonality of User Activity.
In early December 2020, an increase in user interest in the Inkspire store was recorded, corresponding to the pre-holiday period. This led to a rise in book views, especially of gift editions and holiday sets, as well as an increase in items added to the shopping cart.

* ### Decline in Activity During the Holiday Period.
At the end of December 2020 and the beginning of January 2021, user activity decreased, resulting in a drop in sales volume. This is expected, considering the end of the holiday season and the reduction in purchasing activity.

* ### User Behavior by Product Categories.
Reading accessories (bookmarks, lamps, covers), which are relatively low-priced, are added to the cart more frequently but have a lower purchase conversion rate. Meanwhile, books across various categories (fiction, educational, children’s literature) show a higher purchase completion rate and a larger average order value, especially gift editions during the holiday period.

* ### Conversion Funnel.
The funnel reveals that the highest user drop-off occurs at the stages of entering shipping and payment information. This may indicate a need to improve the UX/UI or provide additional information regarding the safety and convenience of the payment process.

* ### Impact of Traffic Channels and Devices.
Users coming from advertising campaigns (source, medium, campaign) exhibit varied behavior: some campaigns generate many views and cart additions but have a lower purchase conversion rate. Additionally, desktop users are more likely to complete purchases compared to mobile device users.

## Recommendations for Improving User Experience and Conversions at Inkspire:

### Optimizing the Checkout Process (Checkout UX)
There is a significant drop-off in users at the stages of entering delivery and payment  information.
#### ➤ Recommendations:
* Simplify and streamline the form to make it more intuitive.
* Add tooltips or brief explanations for form fields.
* Implement address auto-completion (e.g., via Google Maps API).
* Display secure payment icons and SSL certification badges.

### Increasing Conversion Rates for Accessories
Accessories are frequently added to the cart but rarely purchased.
#### ➤ Recommendations:
* Implement up-sell/cross-sell tactics such as “Buy together with a book” or “Recommended with this item.”
* Offer discounts on bundles (e.g., book + bookmark).
* Add emotional descriptions or lifestyle photos showing the accessories in use.

### Seasonal Offers and Promotions
The peak activity in December indicates sensitivity to holiday campaigns.
#### ➤ Recommendations:
* Create a dedicated holiday category on the website.
* Launch themed email campaigns before the holidays.
* Introduce a “Book as a Gift” option (including gift wrapping, greeting cards, etc.).
* Promote gift certificates.

### Improving Mobile Experience
Mobile users are more likely to abandon the purchase process.
#### ➤ Recommendations:
* Optimize the mobile version by improving speed and responsiveness.
* Simplify buttons and the checkout interface for mobile devices.
* Reduce the number of clicks required to complete the payment.

### Optimizing Advertising Campaigns
Some traffic sources generate high volume but have low conversion rates.
#### ➤ Recommendations:
* Analyze channel effectiveness and reallocate the budget accordingly.
* Test landing pages for books and categories.
* Launch retargeting campaigns for users who abandoned their carts.

### Improving Landing Page Structure
#### ➤ Recommendations:
* Add user reviews below the books.
* Implement labels such as “Best Seller,” “New Arrival,” and “Seasonal Offer.”
* Include a “Customers Also Viewed...” section to increase session depth.

> ### The overall goal of the recommendations is to smoothly guide the user through the funnel, reduce barriers at each stage, and strengthen the emotional connection with the Inkspire brand.
