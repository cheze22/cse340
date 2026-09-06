CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);
CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(150) NOT NULL,
    project_date DATE NOT NULL,

    CONSTRAINT fk_project_organization
        FOREIGN KEY (organization_id)
        REFERENCES organization(organization_id)
);

INSERT INTO organization (
    name,
    description,
    contact_email,
    logo_filename
)
VALUES
(
    'BrightFuture Builders',
    'A nonprofit focused on improving community infrastructure through sustainable construction projects.',
    'info@brightfuturebuilders.org',
    'brightfuture-logo.png'
),
(
    'GreenHarvest Growers',
    'An urban farming collective promoting food sustainability and education in local neighborhoods.',
    'contact@greenharvest.org',
    'greenharvest-logo.png'
),
(
    'UnityServe Volunteers',
    'A volunteer coordination group supporting local charities and service initiatives.',
    'hello@unityserve.org',
    'unityserve-logo.png'
);

INSERT INTO project (
    organization_id,
    title,
    description,
    location,
    project_date
)
VALUES

(
    1,
    'Community Center Painting',
    'Help repaint a local community center and improve its appearance.',
    'Downtown Community Center',
    '2026-09-12'
),
(
    1,
    'Playground Repair',
    'Assist with minor repairs and cleanup at a neighborhood playground.',
    'Riverside Park',
    '2026-09-19'
),
(
    1,
    'Home Repair Assistance',
    'Support basic home repair projects for families in need.',
    'Westside Neighborhood',
    '2026-09-26'
),
(
    1,
    'School Furniture Restoration',
    'Repair and repaint desks and chairs for a local school.',
    'Lincoln Community School',
    '2026-10-03'
),
(
    1,
    'Community Shelter Improvement',
    'Help improve and clean facilities at a local community shelter.',
    'Hope Community Shelter',
    '2026-10-10'
),

(
    2,
    'Community Garden Cleanup',
    'Clean and prepare a community garden for the new growing season.',
    'Greenwood Community Garden',
    '2026-09-13'
),
(
    2,
    'Urban Tree Planting',
    'Plant trees in urban areas to improve green spaces.',
    'Central Avenue',
    '2026-09-20'
),
(
    2,
    'Food Garden Workshop',
    'Help organize a workshop teaching families how to grow vegetables.',
    'GreenHarvest Learning Center',
    '2026-09-27'
),
(
    2,
    'Neighborhood Compost Project',
    'Set up composting stations and teach residents how to use them.',
    'Eastside Community Garden',
    '2026-10-04'
),
(
    2,
    'Local Food Harvest',
    'Harvest fresh produce and prepare it for donation to local families.',
    'GreenHarvest Farm',
    '2026-10-11'
),

(
    3,
    'Food Drive',
    'Collect and organize food donations for families in need.',
    'UnityServe Community Hall',
    '2026-09-14'
),
(
    3,
    'Community Tutoring',
    'Tutor local students in math, reading, and other school subjects.',
    'Northside Library',
    '2026-09-21'
),
(
    3,
    'Senior Center Visit',
    'Spend time with seniors and help with recreational activities.',
    'Sunrise Senior Center',
    '2026-09-28'
),
(
    3,
    'Clothing Donation Drive',
    'Collect and organize clothing donations for local charities.',
    'UnityServe Donation Center',
    '2026-10-05'
),
(
    3,
    'Neighborhood Cleanup',
    'Work with volunteers to clean streets and public spaces.',
    'Southside Neighborhood',
    '2026-10-12'
);