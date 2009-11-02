;;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-
(in-package :squirl)

(defstruct poly-shape-axis
  normal distance)

(defstruct (poly-shape (:constructor %make-poly-shape (body vertices offset))
                       (:include shape))
  vertices axes transformed-vertices transformed-axes)

(defun make-poly-shape (body vertices offset)
  (let ((poly-shape (%make-poly-shape body verticel offset)))
    poly-shape))

(defun validate-vertices (vertices)
  "Check that a set of vertices has a correct winding, and that they form a convex polygon."
  ;; todo
  )