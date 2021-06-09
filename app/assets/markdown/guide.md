##What is govspeak?

Govspeak is a simplified 'markup' language based on [Markdown](http://daringfireball.net/projects/markdown/syntax). It's designed to be as easy-to-read and easy-to-write as possible, using simple punctuation instead of complicated tags and code.

Govspeak was developed by the [Government Digital Service](digital.cabinetoffice.gov.uk) with some extra features that we use to format content on [GOV.UK.](https://www.gov.uk)

##Headings

You can create heading levels using the hash character (#). The number of hashes shows the heading level.

The top-level headings on a page are automatically formatted as H1, so you don't need to use this.

    ##This is an H2 subheading
    ###This is an H3 subheading

This is what they look like:

##This is an H2 subheading

###This is an H3 subheading

Don't skip heading levels - in other words, don't jump straight to an H3. Don't insert an H1 anywhere.

##Bold text

    **Double asterisks around text** will turn it bold. Use it sparingly.

This is what it looks like:

**Double asterisks around text** will turn it bold. Use it sparingly.

##Line breaks

To add a line break (a 'soft return', but not a new paragraph), put 2 spaces at the end of a piece of text.


##Bulleted lists

Create bulleted lists using asterisks, hyphens or plus signs at the start of each line:

    * asterisk 1
    * asterisk 2
    * asterisk 3

    - a hyphen
    - another hyphen

    + plus signs
    + more plus signs

This is what they look like:

* asterisk 1
* asterisk 2
* asterisk 3

##Lists of steps

We only use numbered lists for describing steps as part of a process. Do this by adding:

<div class="code-snippet"></div>
`s1. Add numbers.`  
`s2. Check numbers.`  
`s3. Love numbers.`

This example follows the [style guide](https://www.gov.uk/guidance/style-guide/a-to-z-of-gov-uk-style#steps) and looks like:

s1. Add numbers.
s2. Check numbers.
s3. Love numbers.

Steps need an extra line break after the final step (in other words, 2 full blank lines). If you don't do this, other markdown directly after them won't work. If you have a subheading after numbered steps, add a line break after this.

##Tables

Create tables by separating columns with a pipe character (`|`). Add a row of hyphens for each column separated by the `|` character below this. Then use the `|` character to separate items in each row. 

    Test type | Weekday | Evening, weekend and bank holiday
    -|-
    Theory test | 31 | 31
    Abridged theory | 24 | 24
    Practical test | 62 | 75

This is what that table looks like on GOV.UK:

Test type | Weekday | Evening, weekend and bank holiday
-|-
Theory test | 31 | 31
Abridged theory | 24 | 24
Practical test | 62 | 75 

Use a hash (`#`) character after the pipe if the cell is the row title.


    |                                 | Monthly direct debit   | One-off payment  | 
    | --------------------------------| -----------------------|------------------|
    |# Two-wheeled vehicle            | £72                    | £60              |
    |# Three-wheeled vehicle          | £132                   | £120 		      |


This is what that looks like on GOV.UK:

|| Monthly direct debit| One-off payment| 
|--|--|--|
|# Two-wheeled vehicle | £72 | £60 |
|# Three-wheeled vehicle | £132 | £120 |


##Links

###Internal links

Use the end of the URL path (so https://www.gov.uk/tax-disc would be /tax-disc). The link text goes in square brackets, and the slug goes in standard brackets, with no spaces in between:

    [Renew your tax disc](/tax-disc).

This looks like:

[Renew your tax disc](/tax-disc).

###External links

For external links, you need to include the full URL with http:// or www:

    [UK Parliament](http://www.parliament.uk).

This looks like:

[UK Parliament](http://www.parliament.uk).

###Download links

Use '$D' to place download links in a box that shows users they're going to download a file. Always include the file type and size in brackets as part of the link text and title.

    $D
    [Download 'Jobcentre Plus form for employment' (PDF, 43KB)](http://example.com/example.pdf)
    $D

This is what download links look like:

$D
[Download 'Jobcentre Plus form for employment' (PDF, 43KB)]()
$D

When linking to PDFs, don't put the trailing slash '/' at the end, as the link won't work.

This is only used for external download files. If the file is hosted on Inside Government, it should link to the splash page as an internal link.

###Email links

    <address@example.com>

This looks like:

<address@example.com>

##Callouts

To draw attention to content, you can use a variety of callouts. For example, you can put some text in an 'information callout' to indicate that it's something related that's worth knowing.

### Information callouts

    ^This is useful information that's worth knowing.^

This looks like:

^This is useful information that's worth knowing.^

### Warning callouts

    %You will be fined or put in prison if you don't do this thing.%

This looks like:

%You will be fined or put in prison if you don't do this thing.%

### Example callout

    $E
    **Example** Open the pod bay doors.
    $E

This looks like:

$E
**Example** Open the pod bay doors.
$E

##Answer summaries

We no longer add this markdown to any new content. (You may still come across it in the 'quick answer' format.)

  $! This is an answer summary. $!

If you see this markdown, you can delete it.

##Acronyms

List these in the following format at the end of the document and all occurrences will be marked up as acronyms:

    *[FCO]: Foreign and Commonwealth Office

This means the full text will appear when users hover over the acronym wherever it occurs on the page.

###Example of acronym use

Example: PCSO and PCSOs are both in a piece of content.

Always put the longer one first in the list - otherwise PCSOs will pick up only the singular 'Police Community Support Officer'.

    *[PCSOs]: Police Community Support Officers  
    *[PCSO]: Police Community Support Officer

##Contacts

    $C
    Financial Conduct Authority
    <consumer.queries@fca.org.uk>
    Telephone: 0800 111 6768
    Monday to Friday, 8am to 6pm
    Saturday, 9am to 1pm
    [Find out about call charges](/call-charges)
    $C

Remember to add a call charges link when there are telephone numbers.

This creates a contact box, which looks like this:

$C
Financial Conduct Authority  
<consumer.queries@fca.org.uk>  
Telephone: 0800 111 6768  
Monday to Friday, 8am to 6pm  
Saturday, 9am to 1pm  
[Find out about call charges](/call-charges)  
$C

Do not use bold for the contact team name. This is not accessible because it looks like a heading and can be confusing for users of assistive technology. Use heading Markdown above the contact Markdown instead if you need to draw attention to the information.

##Addresses

    $A
    HM Revenue and Customs
    Bradford
    BD98 1YY
    $A

This creates an address box, which looks like this:

$A
HM Revenue and Customs
Bradford
BD98 1YY
$A

Do not use bold for the address title. This is not accessible because it looks like a heading and can be confusing for users of assistive technology. Use heading Markdown above the address Markdown instead if you need to draw attention to the information.

##Buttons


###Default button

    {button}[Continue](https://gov.uk/random){/button}

which looks like this:

{button}[Continue](https://gov.uk/random){/button}

###Start now button

To turn a button into a ['Start now' button](https://www.gov.uk/service-manual/design/start-pages#start-page-elements), you can add `start` to the button tag.  
These buttons should only appear once per page, and be used at the start of a transaction.

    {button start}[Start now](https://gov.uk/random){/button}

which looks like this:

{button start}[Start now](https://gov.uk/random){/button}

###Cross domain tracking button

You can add a Google Analytics [tracking id](https://support.google.com/analytics/answer/7372977?hl=en) which will send page views to another domain, this is used to help services understand the start of their users journeys.

    {button start cross-domain-tracking:UA-XXXXXX-Y}
        [Start now](https://example.com/external-service/start-now)
    {/button}

which looks like this:

{button start cross-domain-tracking:UA-XXXXXX-Y}
  [Start now](https://example.com/external-service/start-now)
{/button}

##Try it yourself

Use the [preview](/) to try using govspeak.

*[PCSOs]: Police Community Support Officers  
*[PCSO]: Police Community Support Officer
