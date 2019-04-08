# You are in charge of a display advertising program. Your ads are displayed on websites all over the internet. You have some CSV input data that counts how many times that users have clicked on an ad on each individual domain. Every line consists of a click count and a domain name, like this:

# counts = [ "900,google.com",
#      "60,mail.yahoo.com",
#      "10,mobile.sports.yahoo.com",
#      "40,sports.yahoo.com",
#      "300,yahoo.com",
#      "10,stackoverflow.com",
#      "2,en.wikipedia.org",
#      "1,es.wikipedia.org",
#      "1,mobile.sports" ]

# Write a function that takes this input as a parameter and returns a data structure containing the number of clicks that were recorded on each domain AND each subdomain under it. For example, a click on "mail.yahoo.com" counts toward the totals for "mail.yahoo.com", "yahoo.com", and "com". (Subdomains are added to the left of their parent domain. So "mail" and "mail.yahoo" are not valid domains. Note that "mobile.sports" appears as a separate domain as the last item of the input.)

# calculateClicksByDomain(counts)
# 1320    com
#  900    google.com
#  410    yahoo.com
#   60    mail.yahoo.com
#   10    mobile.sports.yahoo.com
#   50    sports.yahoo.com
#   10    stackoverflow.com
#    3    org
#    3    wikipedia.org
#    2    en.wikipedia.org
#    1    es.wikipedia.org
#    1    mobile.sports
#    1    sports

counts = [ "900,google.com",
    "60,mail.yahoo.com",
    "10,mobile.sports.yahoo.com",
    "40,sports.yahoo.com",
    "300,yahoo.com",
    "10,stackoverflow.com",
    "2,en.wikipedia.org",
    "1,es.wikipedia.org",
    "1,mobile.sports" ]

require 'pry'

def break_domain_string_by_elements(domain_string)
  resulting_domains = []
  domains_array = domain_string.split('.')
  domains_array.each_with_index do |domain, i|
    resulting_domains << domains_array[i..- 1].join('.')
  end
  resulting_domains
end

# break_domain_string_by_elements("mobile.sports.yahoo.com")
# [ "mobile.sports.yahoo.com", "sports.yahoo.com", "yahoo.com", "com" ]

def calculate_clicks_by_domain(counts)
  all_domains_counter = {}

  counts.each do |csv_string|
    click_count = csv_string.split(",").first.to_i
    initial_domain_string = csv_string.split(",").last
    all_subdomains = break_domain_string_by_elements(initial_domain_string)
    all_subdomains.each do |domain|
      all_domains_counter[domain] ? all_domains_counter[domain] += click_count : all_domains_counter[domain] = click_count
    end
  end

  all_domains_counter.map { |domain, click| [click, domain] }.sort_by { |group| group[0] }.reverse
end

# calculate_clicks_by_domain(counts)
# [
#  ["900", "google.com"]
# ...
#]
