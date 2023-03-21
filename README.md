# Project 4 - *Photo Scavenger Hunt*

Submitted by: **Gabriel Jones**

**Photo Scavenger Hunt** is an app that enables users to upload pictures that hold personal significance, and utilizes the data extracted from the images to display the precise location where each photo was captured on a map.

Time spent: **3** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] App displays list of hard-coded tasks
- [x] When a task is tapped it navigates the user to a task detail view
- [x] When user adds photo to complete the tasks, it marks the task as complete
- [x] When adding photo of task, the location is added
- [x] User returns to home page (list of tasks) and the status of your task is updated to complete	

The following **additional** features are implemented:

- [x] Completed the project only using UIKit except for the launch screen

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![Photo Scavenger Hunt](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExN2I0OWE3ZmZiYjcyOGJkMmI0MTdhNTE5YWNlYjVhYzQ2MmUwODE0OSZjdD1n/I9vUvO9JJd22o3Odz1/giphy.gif)

GIF created with Xcode simulator screen record

## Notes

While building this app, my primary hurdle was to display the map view on the screen. Initially, I was unable to determine the reason for the map's absence, and presumed that it was an issue with the map's fundamental logic. However, the root cause was a minor error - I had overlooked the fact that the mapView required a top, bottom, leading, and trailing constraint, and had only added a top, leading, and trailing constraint. Once I added the missing bottom constraint, the map view appeared as intended.

## License

    Copyright [2023] [Gabriel Jones]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
